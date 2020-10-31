.class Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;
.super Ljava/lang/Object;
.source "GestureNavigationSettingsObserver.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/GestureNavigationSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    # getter for: Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->access$000(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    # getter for: Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->access$000(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1e
    return-void
.end method
