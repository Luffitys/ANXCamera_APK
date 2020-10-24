.class public abstract Lcom/miui/internal/variable/Android_View_ViewGroup_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z
    .locals 0

    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iget-boolean p0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    return p0
.end method

.method public setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iput-boolean p2, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    return-void
.end method
