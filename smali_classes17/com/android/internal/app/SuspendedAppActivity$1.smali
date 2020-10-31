.class Lcom/android/internal/app/SuspendedAppActivity$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SuspendedAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/SuspendedAppActivity;->requestDismissKeyguardIfNeeded(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SuspendedAppActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SuspendedAppActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 3

    # getter for: Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/SuspendedAppActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard dismiss was cancelled. Finishing."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    return-void
.end method

.method public onDismissError()V
    .registers 3

    # getter for: Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/SuspendedAppActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while dismissing keyguard. Keeping the dialog visible."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
