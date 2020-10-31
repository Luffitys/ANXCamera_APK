.class public final synthetic Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/MessagingGroup;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;->f$0:Lcom/android/internal/widget/MessagingGroup;

    iput-object p2, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;->f$0:Lcom/android/internal/widget/MessagingGroup;

    iget-object v1, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingGroup;->lambda$removeGroupAnimated$1$MessagingGroup(Ljava/lang/Runnable;)V

    return-void
.end method
