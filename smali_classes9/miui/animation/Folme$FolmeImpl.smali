.class Lmiui/animation/Folme$FolmeImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/IFolme;


# instance fields
.field private mState:Lmiui/animation/IStateStyle;

.field private mTargets:[Lmiui/animation/IAnimTarget;

.field private mTouch:Lmiui/animation/ITouchStyle;

.field private mVisible:Lmiui/animation/IVisibleStyle;


# direct methods
.method private varargs constructor <init>([Lmiui/animation/IAnimTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    return-void
.end method

.method synthetic constructor <init>([Lmiui/animation/IAnimTarget;Lmiui/animation/Folme$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/Folme$FolmeImpl;-><init>([Lmiui/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method clean()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/animation/IStateContainer;->clean()V

    :cond_0
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmiui/animation/IStateContainer;->clean()V

    :cond_1
    iget-object p0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lmiui/animation/IStateContainer;->clean()V

    :cond_2
    return-void
.end method

.method end()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiui/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiui/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    if-eqz p0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lmiui/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public state()Lmiui/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    invoke-static {v0}, Lmiui/animation/controller/FolmeState;->composeStyle([Lmiui/animation/IAnimTarget;)Lmiui/animation/controller/IFolmeStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    :cond_0
    iget-object p0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public touch()Lmiui/animation/ITouchStyle;
    .locals 2

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeTouch;-><init>([Lmiui/animation/IAnimTarget;)V

    new-instance v1, Lmiui/animation/controller/FolmeFont;

    invoke-direct {v1}, Lmiui/animation/controller/FolmeFont;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/animation/controller/FolmeTouch;->setFontStyle(Lmiui/animation/controller/FolmeFont;)V

    iput-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    :cond_0
    iget-object p0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    return-object p0
.end method

.method public visible()Lmiui/animation/IVisibleStyle;
    .locals 2

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/animation/controller/FolmeVisible;

    iget-object v1, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeVisible;-><init>([Lmiui/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    :cond_0
    iget-object p0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    return-object p0
.end method
