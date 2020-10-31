.class public final synthetic Landroid/media/-$$Lambda$uUtNQdlApH9llAedmk42jVBM_FE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$uUtNQdlApH9llAedmk42jVBM_FE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$uUtNQdlApH9llAedmk42jVBM_FE;

    invoke-direct {v0}, Landroid/media/-$$Lambda$uUtNQdlApH9llAedmk42jVBM_FE;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$uUtNQdlApH9llAedmk42jVBM_FE;->INSTANCE:Landroid/media/-$$Lambda$uUtNQdlApH9llAedmk42jVBM_FE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/media/MediaRouter2Manager;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRouter2Manager;->updatePreferredFeatures(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
