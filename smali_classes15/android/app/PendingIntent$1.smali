.class Landroid/app/PendingIntent$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/PendingIntent$1;->this$0:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PendingIntent$1;->this$0:Landroid/app/PendingIntent;

    # invokes: Landroid/app/PendingIntent;->notifyCancelListeners()V
    invoke-static {v0}, Landroid/app/PendingIntent;->access$000(Landroid/app/PendingIntent;)V

    return-void
.end method
