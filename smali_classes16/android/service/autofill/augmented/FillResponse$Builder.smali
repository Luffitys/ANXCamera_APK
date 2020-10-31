.class public final Landroid/service/autofill/augmented/FillResponse$Builder;
.super Landroid/service/autofill/augmented/FillResponse$BaseBuilder;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mClientState:Landroid/os/Bundle;

.field private mFillWindow:Landroid/service/autofill/augmented/FillWindow;

.field private mInlineSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addInlineSuggestion(Landroid/service/autofill/Dataset;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .registers 3

    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/service/autofill/augmented/FillResponse$Builder;->setInlineSuggestions(Ljava/util/List;)Landroid/service/autofill/augmented/FillResponse$Builder;

    :cond_c
    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/service/autofill/augmented/FillResponse;
    .registers 7

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    # invokes: Landroid/service/autofill/augmented/FillResponse;->defaultFillWindow()Landroid/service/autofill/augmented/FillWindow;
    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->access$000()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    :cond_19
    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    # invokes: Landroid/service/autofill/augmented/FillResponse;->defaultInlineSuggestions()Ljava/util/List;
    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->access$100()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    :cond_28
    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    # invokes: Landroid/service/autofill/augmented/FillResponse;->defaultClientState()Landroid/os/Bundle;
    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->access$200()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    :cond_37
    new-instance v0, Landroid/service/autofill/augmented/FillResponse;

    iget-object v1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    iget-object v3, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Landroid/service/autofill/augmented/FillResponse;-><init>(Landroid/service/autofill/augmented/FillWindow;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setClientState(Landroid/os/Bundle;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFillWindow(Landroid/service/autofill/augmented/FillWindow;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    return-object p0
.end method

.method public setInlineSuggestions(Ljava/util/List;)Landroid/service/autofill/augmented/FillResponse$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;)",
            "Landroid/service/autofill/augmented/FillResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse$Builder;->mInlineSuggestions:Ljava/util/List;

    return-object p0
.end method
