.class public final synthetic Lcom/android/internal/util/-$$Lambda$ScreenshotHelper$r9rp933Jt-vm9lU4BZ-gj9VY0YE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/ScreenshotHelper;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/-$$Lambda$ScreenshotHelper$r9rp933Jt-vm9lU4BZ-gj9VY0YE;->f$0:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p2, p0, Lcom/android/internal/util/-$$Lambda$ScreenshotHelper$r9rp933Jt-vm9lU4BZ-gj9VY0YE;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/-$$Lambda$ScreenshotHelper$r9rp933Jt-vm9lU4BZ-gj9VY0YE;->f$0:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v1, p0, Lcom/android/internal/util/-$$Lambda$ScreenshotHelper$r9rp933Jt-vm9lU4BZ-gj9VY0YE;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;->lambda$takeScreenshot$0$ScreenshotHelper(Ljava/util/function/Consumer;)V

    return-void
.end method
