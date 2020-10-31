.class Landroid/hardware/face/FaceManager$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method private constructor <init>(Landroid/hardware/face/FaceManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;->this$0:Landroid/hardware/face/FaceManager;

    # invokes: Landroid/hardware/face/FaceManager;->cancelEnrollment()V
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$400(Landroid/hardware/face/FaceManager;)V

    return-void
.end method
