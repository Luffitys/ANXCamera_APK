.class final Landroid/media/MediaRouter2Manager$TransferRequest;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferRequest"
.end annotation


# instance fields
.field public final mOldSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final mRequestId:I

.field public final mTargetRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method constructor <init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    iput-object p2, p0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iput-object p3, p0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method
