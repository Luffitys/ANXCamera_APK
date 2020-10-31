.class public final synthetic Lcom/android/internal/policy/-$$Lambda$GestureNavigationSettingsObserver$F3d-7CsBNLG-3ODg3tTHhvWfOA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/-$$Lambda$GestureNavigationSettingsObserver$F3d-7CsBNLG-3ODg3tTHhvWfOA4;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/-$$Lambda$GestureNavigationSettingsObserver$F3d-7CsBNLG-3ODg3tTHhvWfOA4;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$register$0$GestureNavigationSettingsObserver(Ljava/lang/Runnable;)V

    return-void
.end method
