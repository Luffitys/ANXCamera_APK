.class public final synthetic Lcom/android/internal/content/om/-$$Lambda$8ZY6dnO1FkDIliprAt8K651mwFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/content/om/-$$Lambda$8ZY6dnO1FkDIliprAt8K651mwFE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/content/om/-$$Lambda$8ZY6dnO1FkDIliprAt8K651mwFE;

    invoke-direct {v0}, Lcom/android/internal/content/om/-$$Lambda$8ZY6dnO1FkDIliprAt8K651mwFE;-><init>()V

    sput-object v0, Lcom/android/internal/content/om/-$$Lambda$8ZY6dnO1FkDIliprAt8K651mwFE;->INSTANCE:Lcom/android/internal/content/om/-$$Lambda$8ZY6dnO1FkDIliprAt8K651mwFE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    check-cast p1, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-direct {v0, p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    return-object v0
.end method
