.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MandatoryStreamCombination"

.field private static sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIsReprocessable:Z

.field private final mStreamsInformation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const/16 v0, 0x8

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v7, 0x22

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Simple preview, GPU video processing, or no-preview video recording"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v9, 0x100

    invoke-direct {v5, v9, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v4, v6

    const-string v5, "No-viewfinder still image capture"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v10, 0x23

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v4, v6

    const-string v5, "In-application video/image processing"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v5, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v5, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v5, v3

    const-string v8, "Standard still imaging"

    invoke-direct {v2, v5, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v8, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v8, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v8, v3

    const-string v11, "In-app processing plus still capture"

    invoke-direct {v2, v8, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v11, v6

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v11, v3

    const-string v12, "Standard recording"

    invoke-direct {v2, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v12, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v3

    const-string v13, "Preview plus in-app processing"

    invoke-direct {v2, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v12, 0x6

    aput-object v2, v1, v12

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "Still capture plus in-app processing"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v13, 0x7

    aput-object v2, v1, v13

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v1, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v14, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v14, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v14, v3

    const-string v13, "High-resolution video recording with preview"

    invoke-direct {v2, v14, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "High-resolution in-app video processing with preview"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "Two-input in-app video processing"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "High-resolution recording with video snapshot"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "High-resolution in-app processing with video snapshot"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "Two-input in-app processing with still capture"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v11

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v1, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "Maximum-resolution GPU processing with preview"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v7, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v13, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v0, v13, v3

    const-string v0, "Maximum-resolution in-app processing with preview"

    invoke-direct {v2, v13, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v13, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v13, v3

    const-string v11, "Maximum-resolution two-input in-app processsing"

    invoke-direct {v2, v13, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v1, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v13, v6

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v13, v3

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v12, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v3

    invoke-direct {v2, v12, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v2, v6

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v2, v3

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Video recording with maximum-size video snapshot"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Standard video recording plus maximum-resolution in-app processing"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v8

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Preview plus two-input maximum-resolution in-app processing"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/16 v0, 0x8

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v13, 0x20

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    const-string v11, "No-preview DNG capture"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "Standard DNG capture"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "In-app processing plus DNG capture"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Video recording with DNG capture"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Preview with in-app processing and DNG capture"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v8

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Two-input in-app processing plus DNG capture"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Still capture with simultaneous JPEG and DNG"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "In-app processing with simultaneous JPEG and DNG"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v0, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v5

    const-string v11, "In-app viewfinder analysis with dynamic selection of output format"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v2, v6

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v2, v3

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v9, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v2, v4

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v2, v5

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "No-viewfinder still image reprocessing"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v14, "ZSL(Zero-Shutter-Lag) still imaging"

    invoke-direct {v1, v2, v14, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL still and in-app processing imaging"

    invoke-direct {v1, v2, v15, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v13, "ZSL in-app processing with still capture"

    invoke-direct {v1, v2, v13, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v1, v2, v12, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v1, v2, v14, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v1, v2, v15, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v1, v2, v13, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "High-resolution ZSL in-app video processing with regular preview"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Maximum-resolution ZSL in-app processing with regular preview"

    invoke-direct {v0, v2, v12, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Maximum-resolution two-input ZSL in-app processing"

    invoke-direct {v0, v2, v12, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "ZSL still capture and in-app processing"

    invoke-direct {v0, v2, v12, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Maximum-resolution multi-frame image fusion in-app processing with regular preview"

    invoke-direct {v0, v2, v12, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Maximum-resolution multi-frame image fusion two-input in-app processing"

    invoke-direct {v0, v2, v12, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "ZSL still capture and in-app processing"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL in-app processing and DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL in-app processing and preview with DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL two-input in-app processing and DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL still capture and preview with DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL in-app processing with still capture and DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL in-app processing and DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL in-app processing and preview with DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL two-input in-app processing and DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL still capture and preview with DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "Mutually exclusive ZSL in-app processing with still capture and DNG capture"

    invoke-direct {v0, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v0, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v8, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v5

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "In-app viewfinder analysis with ZSL, RAW, and JPEG reprocessing output"

    invoke-direct {v1, v8, v11, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v0, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v8, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v4

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "In-app viewfinder analysis with ZSL and RAW"

    invoke-direct {v1, v2, v11, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x4

    new-array v8, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v2, v8, v5

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v11, "In-app viewfinder analysis with ZSL, RAW, and JPEG reprocessing output"

    invoke-direct {v1, v8, v11, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    const-string v8, "In-app video / image processing"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    const-string/jumbo v8, "preview / preview to GPU"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    const-string v8, "No view-finder still image capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    const-string v8, "Two-input in app video / image processing"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "High resolution video recording with preview"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "In-app video / image processing with preview"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "In-app video / image processing with preview"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v7, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v9, v7}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard stil image capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v4, v10, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v4, v2, v6

    new-instance v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v4, v9, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v4, v2, v3

    const-string v4, "Standard still image capture"

    invoke-direct {v1, v2, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v0, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const v5, 0x44363159

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v3, v2, v6

    const-string v3, "Depth capture for mesh based object rendering"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty stream information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$100()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$1000()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$1100()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$1200()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$1300()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$1400()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$1500()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$200()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$300()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$400()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$500()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$600()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$700()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$800()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static synthetic access$900()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    if-eqz v1, :cond_34

    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    if-ne v2, v3, :cond_33

    iget-boolean v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2a

    goto :goto_33

    :cond_2a
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_33
    :goto_33
    return v0

    :cond_34
    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamsInformation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public isReprocessable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    return v0
.end method
