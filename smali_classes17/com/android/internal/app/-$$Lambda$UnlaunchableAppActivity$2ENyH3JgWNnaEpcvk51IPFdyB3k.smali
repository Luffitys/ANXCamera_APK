.class public final synthetic Lcom/android/internal/app/-$$Lambda$UnlaunchableAppActivity$2ENyH3JgWNnaEpcvk51IPFdyB3k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

.field public final synthetic f$1:Landroid/os/UserManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$UnlaunchableAppActivity$2ENyH3JgWNnaEpcvk51IPFdyB3k;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$UnlaunchableAppActivity$2ENyH3JgWNnaEpcvk51IPFdyB3k;->f$1:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$UnlaunchableAppActivity$2ENyH3JgWNnaEpcvk51IPFdyB3k;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$UnlaunchableAppActivity$2ENyH3JgWNnaEpcvk51IPFdyB3k;->f$1:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$onClick$0$UnlaunchableAppActivity(Landroid/os/UserManager;)V

    return-void
.end method
