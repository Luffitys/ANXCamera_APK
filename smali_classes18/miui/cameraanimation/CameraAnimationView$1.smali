.class Lmiui/cameraanimation/CameraAnimationView$1;
.super Ljava/lang/Object;
.source "CameraAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cameraanimation/CameraAnimationView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cameraanimation/CameraAnimationView;


# direct methods
.method constructor <init>(Lmiui/cameraanimation/CameraAnimationView;)V
    .registers 2

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationView$1;->this$0:Lmiui/cameraanimation/CameraAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationView$1;->this$0:Lmiui/cameraanimation/CameraAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/cameraanimation/CameraAnimationView;->setVisibility(I)V

    return-void
.end method
