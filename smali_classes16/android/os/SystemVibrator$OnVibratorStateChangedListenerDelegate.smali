.class Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;
.super Landroid/os/IVibratorStateListener$Stub;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnVibratorStateChangedListenerDelegate"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field final synthetic this$0:Landroid/os/SystemVibrator;


# direct methods
.method constructor <init>(Landroid/os/SystemVibrator;Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    iput-object p1, p0, Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;->this$0:Landroid/os/SystemVibrator;

    invoke-direct {p0}, Landroid/os/IVibratorStateListener$Stub;-><init>()V

    iput-object p3, p0, Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onVibrating$0$SystemVibrator$OnVibratorStateChangedListenerDelegate(Z)V
    .registers 3

    iget-object v0, p0, Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    return-void
.end method

.method public onVibrating(Z)V
    .registers 4

    iget-object v0, p0, Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/-$$Lambda$SystemVibrator$OnVibratorStateChangedListenerDelegate$TagAqaiuke_42S8UkSIiiGTN_8Y;

    invoke-direct {v1, p0, p1}, Landroid/os/-$$Lambda$SystemVibrator$OnVibratorStateChangedListenerDelegate$TagAqaiuke_42S8UkSIiiGTN_8Y;-><init>(Landroid/os/SystemVibrator$OnVibratorStateChangedListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
