import os
import pygame
import xml.etree.ElementTree as ET

# Initialize pygame display in headless mode to load images
pygame.init()
pygame.display.set_mode((1, 1), pygame.NOFRAME)

def patch_tsx_files():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    directory = os.path.join(script_dir, "..")
    files = [f for f in os.listdir(directory) if f.endswith(".tsx")]
    
    for filename in files:
        filepath = os.path.join(directory, filename)
        print(f"Checking {filename}...")
        
        try:
            tree = ET.parse(filepath)
            root = tree.getroot()
            
            image_node = root.find("image")
            if image_node is not None:
                source = image_node.get("source")
                width_attr = image_node.get("width")
                height_attr = image_node.get("height")
                
                # If width or height is missing, patch it
                if width_attr is None or height_attr is None:
                    image_path = os.path.join(directory, source)
                    if os.path.exists(image_path):
                        img = pygame.image.load(image_path)
                        width, height = img.get_size()
                        print(f"  Found image: {source} with dimensions {width}x{height}")
                        
                        image_node.set("width", str(width))
                        image_node.set("height", str(height))
                        
                        # Write back with indentation
                        tree.write(filepath, encoding="UTF-8", xml_declaration=True)
                        print(f"  Successfully patched {filename} with width={width}, height={height}")
                    else:
                        print(f"  Warning: Image file {source} not found at {image_path}")
                else:
                    print(f"  {filename} already has width={width_attr} and height={height_attr}")
        except Exception as e:
            print(f"  Error processing {filename}: {e}")

if __name__ == "__main__":
    patch_tsx_files()
    pygame.quit()
