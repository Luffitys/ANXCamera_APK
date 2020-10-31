.class Landroid/view/WindowlessWindowManager$State;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowlessWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field mDisplayId:I

.field mInputChannelToken:Landroid/os/IBinder;

.field mInputRegion:Landroid/graphics/Region;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$0:Landroid/view/WindowlessWindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/os/IBinder;)V
    .registers 6

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->this$0:Landroid/view/WindowlessWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput p4, p0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iput-object p5, p0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    return-void
.end method
