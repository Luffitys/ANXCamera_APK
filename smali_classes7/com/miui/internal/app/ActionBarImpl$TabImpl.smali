.class public Lcom/miui/internal/app/ActionBarImpl$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source ""


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInternalCallback:Landroid/app/ActionBar$TabListener;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 0

    invoke-static {}, Lcom/miui/internal/app/ActionBarImpl;->access$300()Landroid/app/ActionBar$TabListener;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public select()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$700(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$500(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$600(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$700(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$500(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$600(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$700(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$500(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$600(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method
