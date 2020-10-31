.class public final synthetic Lcom/android/internal/widget/-$$Lambda$ConversationLayout$U2MLx3G6SszITnyPuess44Eb_pM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/ConversationLayout;

.field public final synthetic f$1:Lcom/android/internal/widget/MessagingGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$U2MLx3G6SszITnyPuess44Eb_pM;->f$0:Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$U2MLx3G6SszITnyPuess44Eb_pM;->f$1:Lcom/android/internal/widget/MessagingGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$U2MLx3G6SszITnyPuess44Eb_pM;->f$0:Lcom/android/internal/widget/ConversationLayout;

    iget-object v1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$U2MLx3G6SszITnyPuess44Eb_pM;->f$1:Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->lambda$removeGroups$6$ConversationLayout(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method
