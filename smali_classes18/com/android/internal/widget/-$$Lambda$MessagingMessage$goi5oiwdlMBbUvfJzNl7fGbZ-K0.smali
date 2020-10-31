.class public final synthetic Lcom/android/internal/widget/-$$Lambda$MessagingMessage$goi5oiwdlMBbUvfJzNl7fGbZ-K0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/MessagingMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/MessagingMessage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$MessagingMessage$goi5oiwdlMBbUvfJzNl7fGbZ-K0;->f$0:Lcom/android/internal/widget/MessagingMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$MessagingMessage$goi5oiwdlMBbUvfJzNl7fGbZ-K0;->f$0:Lcom/android/internal/widget/MessagingMessage;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingMessage;->lambda$hideAnimated$0(Lcom/android/internal/widget/MessagingMessage;)V

    return-void
.end method
