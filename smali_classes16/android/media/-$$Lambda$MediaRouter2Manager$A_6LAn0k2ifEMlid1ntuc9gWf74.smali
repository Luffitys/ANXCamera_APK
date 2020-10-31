.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2Manager$A_6LAn0k2ifEMlid1ntuc9gWf74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$MediaRouter2Manager$A_6LAn0k2ifEMlid1ntuc9gWf74;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$MediaRouter2Manager$A_6LAn0k2ifEMlid1ntuc9gWf74;

    invoke-direct {v0}, Landroid/media/-$$Lambda$MediaRouter2Manager$A_6LAn0k2ifEMlid1ntuc9gWf74;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$MediaRouter2Manager$A_6LAn0k2ifEMlid1ntuc9gWf74;->INSTANCE:Landroid/media/-$$Lambda$MediaRouter2Manager$A_6LAn0k2ifEMlid1ntuc9gWf74;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/media/MediaRouter2Manager;

    check-cast p2, Landroid/media/MediaRouter2Manager$TransferRequest;

    invoke-static {p1, p2}, Landroid/media/MediaRouter2Manager;->lambda$A_6LAn0k2ifEMlid1ntuc9gWf74(Landroid/media/MediaRouter2Manager;Landroid/media/MediaRouter2Manager$TransferRequest;)V

    return-void
.end method
