.class public final Landroid/service/notification/ZenPolicy$Builder;
.super Ljava/lang/Object;
.source "ZenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mZenPolicy:Landroid/service/notification/ZenPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/service/notification/ZenPolicy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_13

    :cond_c
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    :goto_13
    return-void
.end method


# virtual methods
.method public allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityMessages:I
    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->access$102(Landroid/service/notification/ZenPolicy;I)I

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityCalls:I
    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->access$202(Landroid/service/notification/ZenPolicy;I)I

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mConversationSenders:I
    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->access$302(Landroid/service/notification/ZenPolicy;I)I

    return-object p0
.end method

.method public allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    const/4 v0, 0x3

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1a

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_1a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v2, :cond_23

    if-ne p1, v0, :cond_22

    goto :goto_23

    :cond_22
    return-object p0

    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_30
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityCalls:I
    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->access$202(Landroid/service/notification/ZenPolicy;I)I

    return-object p0
.end method

.method public allowCategory(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x6

    if-eq p1, v0, :cond_16

    const/4 v0, 0x7

    if-eq p1, v0, :cond_12

    goto :goto_2a

    :cond_12
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_2a

    :cond_16
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_2a

    :cond_1a
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_2a

    :cond_1e
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_2a

    :cond_22
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_2a

    :cond_26
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    nop

    :goto_2a
    return-object p0
.end method

.method public allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    const/16 v0, 0x8

    if-nez p1, :cond_9

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1b

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_1b
    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    if-ne p1, v2, :cond_21

    goto :goto_22

    :cond_21
    return-object p0

    :cond_22
    :goto_22
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mConversationSenders:I
    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->access$302(Landroid/service/notification/ZenPolicy;I)I

    return-object p0
.end method

.method public allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x2

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    const/4 v0, 0x2

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_19
    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v0, :cond_23

    const/4 v2, 0x3

    if-ne p1, v2, :cond_22

    goto :goto_23

    :cond_22
    return-object p0

    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_30
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityMessages:I
    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->access$102(Landroid/service/notification/ZenPolicy;I)I

    return-object p0
.end method

.method public allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Landroid/service/notification/ZenPolicy;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    return-object v0
.end method

.method public disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x4

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityMessages:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$102(Landroid/service/notification/ZenPolicy;I)I

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityCalls:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$202(Landroid/service/notification/ZenPolicy;I)I

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x3

    # setter for: Landroid/service/notification/ZenPolicy;->mConversationSenders:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$302(Landroid/service/notification/ZenPolicy;I)I

    return-object p0
.end method

.method public hideAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-object p0
.end method

.method public showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-object p0
.end method

.method public showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showLights(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x2

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .registers 3

    packed-switch p1, :pswitch_data_22

    goto :goto_20

    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    :pswitch_8
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    :pswitch_14
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    :pswitch_18
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    :pswitch_1c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    nop

    :goto_20
    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$000(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityMessages:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$102(Landroid/service/notification/ZenPolicy;I)I

    goto :goto_29

    :cond_17
    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityCalls:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$202(Landroid/service/notification/ZenPolicy;I)I

    goto :goto_29

    :cond_20
    const/16 v0, 0x8

    if-ne p1, v0, :cond_29

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # setter for: Landroid/service/notification/ZenPolicy;->mConversationSenders:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$302(Landroid/service/notification/ZenPolicy;I)I

    :cond_29
    :goto_29
    return-object p0
.end method

.method public unsetVisualEffect(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    # getter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->access$400(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
