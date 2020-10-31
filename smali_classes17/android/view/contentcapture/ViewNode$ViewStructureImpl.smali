.class public final Landroid/view/contentcapture/ViewNode$ViewStructureImpl;
.super Landroid/view/ViewStructure;
.source "ViewNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ViewNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewStructureImpl"
.end annotation


# instance fields
.field final mNode:Landroid/view/contentcapture/ViewNode;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$002(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    # setter for: Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v1, v2}, Landroid/view/contentcapture/ViewNode;->access$102(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    :cond_2b
    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;JI)V
    .registers 7

    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    # setter for: Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$102(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$002(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    return-void
.end method

.method private getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$2800(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$2800(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/contentcapture/ViewNode$ViewNodeText;

    invoke-direct {v1}, Landroid/view/contentcapture/ViewNode$ViewNodeText;-><init>()V

    # setter for: Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$2802(Landroid/view/contentcapture/ViewNode;Landroid/view/contentcapture/ViewNode$ViewNodeText;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$2800(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addChildCount(I)I
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public asyncCommit()V
    .registers 3

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncCommit() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public asyncNewChild(I)Landroid/view/ViewStructure;
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncNewChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$000(Landroid/view/contentcapture/ViewNode;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 3

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1800(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1800(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$1802(Landroid/view/contentcapture/ViewNode;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1800(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Landroid/view/contentcapture/ViewNode;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    return-object v0
.end method

.method public getTempRect()Landroid/graphics/Rect;
    .registers 3

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTempRect() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionStart()I

    move-result v0

    return v0
.end method

.method public hasExtras()Z
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1800(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public newChild(I)Landroid/view/ViewStructure;
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newHtmlInfoBuilder() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccessibilityFocused(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x20001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x20000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setActivated(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x200001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x200000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAlpha() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAssistBlocked(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x401

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x400

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setAutofillHints([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2002(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$002(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    # setter for: Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$102(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$002(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    return-void
.end method

.method public setAutofillOptions([Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2202(Landroid/view/contentcapture/ViewNode;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    return-void
.end method

.method public setAutofillType(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillType:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$1902(Landroid/view/contentcapture/ViewNode;I)I

    return-void
.end method

.method public setAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2102(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method public setCheckable(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x40001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x40000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setChecked(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x80001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x80000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setChildCount(I)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$1402(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setClickable(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x1001

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x1000

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$1502(Landroid/view/contentcapture/ViewNode;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public setContextClickable(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x4001

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x4000

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setDataIsSensitive(Z)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setDataIsSensitive() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDimens(IIIIII)V
    .registers 8

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mX:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$602(Landroid/view/contentcapture/ViewNode;I)I

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mY:I
    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->access$702(Landroid/view/contentcapture/ViewNode;I)I

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mScrollX:I
    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->access$802(Landroid/view/contentcapture/ViewNode;I)I

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mScrollY:I
    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->access$902(Landroid/view/contentcapture/ViewNode;I)I

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mWidth:I
    invoke-static {v0, p5}, Landroid/view/contentcapture/ViewNode;->access$1002(Landroid/view/contentcapture/ViewNode;I)I

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mHeight:I
    invoke-static {v0, p6}, Landroid/view/contentcapture/ViewNode;->access$1102(Landroid/view/contentcapture/ViewNode;I)I

    return-void
.end method

.method public setElevation(F)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setElevation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x801

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x0

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x800

    :goto_10
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setFocusable(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x8001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x8000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setFocused(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x10001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x10000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    return-void
.end method

.method public setHintIdEntry(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # setter for: Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$1702(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setHtmlInfo() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mId:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$202(Landroid/view/contentcapture/ViewNode;I)I

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->access$302(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;
    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->access$402(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;
    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->access$502(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setInputType(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mInputType:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2302(Landroid/view/contentcapture/ViewNode;I)I

    return-void
.end method

.method public setLocaleList(Landroid/os/LocaleList;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2702(Landroid/view/contentcapture/ViewNode;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    return-void
.end method

.method public setLongClickable(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x2001

    and-long/2addr v1, v3

    if-eqz p1, :cond_e

    const-wide/16 v3, 0x2000

    goto :goto_10

    :cond_e
    const-wide/16 v3, 0x0

    :goto_10
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setMaxTextEms(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mMaxEms:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2502(Landroid/view/contentcapture/ViewNode;I)I

    return-void
.end method

.method public setMaxTextLength(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mMaxLength:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2602(Landroid/view/contentcapture/ViewNode;I)I

    return-void
.end method

.method public setMinTextEms(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # setter for: Landroid/view/contentcapture/ViewNode;->mMinEms:I
    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->access$2402(Landroid/view/contentcapture/ViewNode;I)I

    return-void
.end method

.method public setOpaque(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x400001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x400000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setSelected(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x100001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/32 v3, 0x100000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .registers 6

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    return-void
.end method

.method public setTextIdEntry(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # setter for: Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->access$1602(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setTextLines([I[I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    iput-object p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    iput-object p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    return-void
.end method

.method public setTextStyle(FIII)V
    .registers 6

    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    iput p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    iput p4, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    return-void
.end method

.method public setTransformation(Landroid/graphics/Matrix;)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTransformation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVisibility(I)V
    .registers 9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    # getter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->access$1300(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0xd

    and-long/2addr v1, v3

    int-to-long v3, p1

    const-wide/16 v5, 0xc

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    # setter for: Landroid/view/contentcapture/ViewNode;->mFlags:J
    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->access$1302(Landroid/view/contentcapture/ViewNode;J)J

    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .registers 4

    # getter for: Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setWebDomain() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
