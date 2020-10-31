.class public final Landroid/print/PrintJobInfo$Builder;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    :goto_10
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintJobInfo;
    .registers 2

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public putAdvancedOption(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$502(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_12
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "key cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$502(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_17
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .registers 3

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$102(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    return-void
.end method

.method public setCopies(I)V
    .registers 3

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mCopies:I
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$002(Landroid/print/PrintJobInfo;I)I

    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .registers 3

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$202(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    return-void
.end method

.method public setProgress(F)V
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "progress"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mProgress:F
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;F)F

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$402(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method
