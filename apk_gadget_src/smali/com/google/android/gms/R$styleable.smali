.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final AppDataSearch:[I

.field public static final Corpus:[I

.field public static final Corpus_contentProviderUri:I = 0x2

.field public static final Corpus_corpusId:I = 0x0

.field public static final Corpus_corpusVersion:I = 0x1

.field public static final Corpus_documentMaxAgeSecs:I = 0x6

.field public static final Corpus_perAccountTemplate:I = 0x7

.field public static final Corpus_schemaOrgType:I = 0x4

.field public static final Corpus_semanticallySearchable:I = 0x5

.field public static final Corpus_trimmable:I = 0x3

.field public static final FeatureParam:[I

.field public static final FeatureParam_paramName:I = 0x0

.field public static final FeatureParam_paramValue:I = 0x1

.field public static final GlobalSearch:[I

.field public static final GlobalSearchCorpus:[I

.field public static final GlobalSearchCorpus_allowShortcuts:I = 0x0

.field public static final GlobalSearchSection:[I

.field public static final GlobalSearchSection_sectionContent:I = 0x1

.field public static final GlobalSearchSection_sectionType:I = 0x0

.field public static final GlobalSearch_defaultIntentAction:I = 0x3

.field public static final GlobalSearch_defaultIntentActivity:I = 0x5

.field public static final GlobalSearch_defaultIntentData:I = 0x4

.field public static final GlobalSearch_searchEnabled:I = 0x0

.field public static final GlobalSearch_searchLabel:I = 0x1

.field public static final GlobalSearch_settingsDescription:I = 0x2

.field public static final IMECorpus:[I

.field public static final IMECorpus_inputEnabled:I = 0x0

.field public static final IMECorpus_sourceClass:I = 0x1

.field public static final IMECorpus_toAddressesSection:I = 0x5

.field public static final IMECorpus_userInputSection:I = 0x3

.field public static final IMECorpus_userInputTag:I = 0x2

.field public static final IMECorpus_userInputValue:I = 0x4

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final Section:[I

.field public static final SectionFeature:[I

.field public static final SectionFeature_featureType:I = 0x0

.field public static final Section_indexPrefixes:I = 0x4

.field public static final Section_noIndex:I = 0x2

.field public static final Section_schemaOrgProperty:I = 0x6

.field public static final Section_sectionFormat:I = 0x1

.field public static final Section_sectionId:I = 0x0

.field public static final Section_sectionWeight:I = 0x3

.field public static final Section_subsectionSeparator:I = 0x5

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 172
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    .line 176
    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/gms/R$styleable;->AppDataSearch:[I

    .line 177
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/R$styleable;->Corpus:[I

    .line 186
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/R$styleable;->FeatureParam:[I

    .line 189
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/R$styleable;->GlobalSearch:[I

    .line 190
    new-array v0, v4, [I

    const v1, 0x7f0100d1

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/R$styleable;->GlobalSearchCorpus:[I

    .line 192
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/R$styleable;->GlobalSearchSection:[I

    .line 201
    new-array v0, v6, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/gms/R$styleable;->IMECorpus:[I

    .line 208
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    .line 212
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/gms/R$styleable;->Section:[I

    .line 213
    new-array v0, v4, [I

    const v1, 0x7f01010d

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/R$styleable;->SectionFeature:[I

    .line 222
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    return-void

    .line 172
    :array_0
    .array-data 4
        0x7f010021
        0x7f010022
        0x7f010023
    .end array-data

    .line 177
    :array_1
    .array-data 4
        0x7f0100b0
        0x7f0100b1
        0x7f0100b2
        0x7f0100b3
        0x7f0100b4
        0x7f0100b5
        0x7f0100b6
        0x7f0100b7
    .end array-data

    .line 186
    :array_2
    .array-data 4
        0x7f0100c0
        0x7f0100c1
    .end array-data

    .line 189
    :array_3
    .array-data 4
        0x7f0100cb
        0x7f0100cc
        0x7f0100cd
        0x7f0100ce
        0x7f0100cf
        0x7f0100d0
    .end array-data

    .line 192
    :array_4
    .array-data 4
        0x7f0100d2
        0x7f0100d3
    .end array-data

    .line 201
    :array_5
    .array-data 4
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
    .end array-data

    .line 208
    :array_6
    .array-data 4
        0x7f0100dd
        0x7f0100de
        0x7f0100df
    .end array-data

    .line 212
    :array_7
    .array-data 4
        0x7f010106
        0x7f010107
        0x7f010108
        0x7f010109
        0x7f01010a
        0x7f01010b
        0x7f01010c
    .end array-data

    .line 222
    :array_8
    .array-data 4
        0x7f01010e
        0x7f01010f
        0x7f010110
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
