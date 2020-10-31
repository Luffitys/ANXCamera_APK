.class public final synthetic Lcom/android/internal/widget/-$$Lambda$ConversationLayout$LxuUzMJyRDJje4QWVuhQgBm11eI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/ConversationLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/ConversationLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$LxuUzMJyRDJje4QWVuhQgBm11eI;->f$0:Lcom/android/internal/widget/ConversationLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$LxuUzMJyRDJje4QWVuhQgBm11eI;->f$0:Lcom/android/internal/widget/ConversationLayout;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$0$ConversationLayout(Ljava/lang/Integer;)V

    return-void
.end method
