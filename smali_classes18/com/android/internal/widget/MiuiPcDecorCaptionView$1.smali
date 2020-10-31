.class Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;
.super Landroid/os/Binder;
.source "MiuiPcDecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MiuiPcDecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_8
    const-string v1, "com.android.pcmode.Client"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLIENT_DESCRIPTOR onTransact, code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clientAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiPcDecorCaptionView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->access$000(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiPcDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->access$000(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
