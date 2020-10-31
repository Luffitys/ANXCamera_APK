.class public final synthetic Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/android/internal/widget/MessagingMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;->f$0:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;->f$2:Lcom/android/internal/widget/MessagingMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;->f$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;->f$2:Lcom/android/internal/widget/MessagingMessage;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->lambda$removeMessage$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V

    return-void
.end method
