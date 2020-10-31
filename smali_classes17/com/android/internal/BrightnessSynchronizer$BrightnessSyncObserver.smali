.class Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSyncObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/BrightnessSynchronizer;


# direct methods
.method constructor <init>(Lcom/android/internal/BrightnessSynchronizer;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    if-eqz p1, :cond_3

    return-void

    :cond_3
    # getter for: Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/BrightnessSynchronizer;->access$200()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/BrightnessSynchronizer;->access$300(Lcom/android/internal/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/internal/BrightnessSynchronizer;->getScreenBrightnessInt(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/android/internal/BrightnessSynchronizer;->access$400(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/BrightnessSynchronizer;->access$500(Lcom/android/internal/BrightnessSynchronizer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4e

    :cond_27
    # getter for: Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/BrightnessSynchronizer;->access$600()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/BrightnessSynchronizer;->access$300(Lcom/android/internal/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/internal/BrightnessSynchronizer;->getScreenBrightnessFloat(Landroid/content/Context;)F
    invoke-static {v0}, Lcom/android/internal/BrightnessSynchronizer;->access$700(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/BrightnessSynchronizer;->access$500(Lcom/android/internal/BrightnessSynchronizer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4f

    :cond_4e
    :goto_4e
    nop

    :goto_4f
    return-void
.end method

.method public startObserving()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/BrightnessSynchronizer;->access$300(Lcom/android/internal/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/BrightnessSynchronizer;->access$200()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/BrightnessSynchronizer;->access$600()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    # getter for: Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/BrightnessSynchronizer;->access$300(Lcom/android/internal/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
