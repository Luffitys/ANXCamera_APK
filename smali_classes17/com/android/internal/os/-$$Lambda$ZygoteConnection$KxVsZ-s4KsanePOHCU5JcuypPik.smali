.class public final synthetic Lcom/android/internal/os/-$$Lambda$ZygoteConnection$KxVsZ-s4KsanePOHCU5JcuypPik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/-$$Lambda$ZygoteConnection$KxVsZ-s4KsanePOHCU5JcuypPik;->f$0:I

    iput p2, p0, Lcom/android/internal/os/-$$Lambda$ZygoteConnection$KxVsZ-s4KsanePOHCU5JcuypPik;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/internal/os/-$$Lambda$ZygoteConnection$KxVsZ-s4KsanePOHCU5JcuypPik;->f$0:I

    iget v1, p0, Lcom/android/internal/os/-$$Lambda$ZygoteConnection$KxVsZ-s4KsanePOHCU5JcuypPik;->f$1:I

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteConnection;->lambda$handleHiddenApiAccessLogSampleRate$1(II)V

    return-void
.end method
