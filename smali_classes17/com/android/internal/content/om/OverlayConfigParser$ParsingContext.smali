.class Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsingContext"
.end annotation


# instance fields
.field private final mConfiguredOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFoundMutableOverlay:Z

.field private mMergeDepth:I

.field private final mOrderedConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;


# direct methods
.method private constructor <init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mOrderedConfigurations:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mConfiguredOverlays:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mOrderedConfigurations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$208(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I
    .registers 3

    iget v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I
    .registers 3

    iget v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mConfiguredOverlays:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mFoundMutableOverlay:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mFoundMutableOverlay:Z

    return p1
.end method
