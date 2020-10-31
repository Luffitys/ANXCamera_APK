.class Lmiui/animation/Folme$FolmeImpl;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Lmiui/animation/IFolme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolmeImpl"
.end annotation


# instance fields
.field private mState:Lmiui/animation/IStateStyle;

.field private mTargets:[Lmiui/animation/IAnimTarget;

.field private mTouch:Lmiui/animation/ITouchStyle;

.field private mVisible:Lmiui/animation/IVisibleStyle;


# direct methods
.method private varargs constructor <init>([Lmiui/animation/IAnimTarget;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    return-void
.end method

.method synthetic constructor <init>([Lmiui/animation/IAnimTarget;Lmiui/animation/Folme$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/Folme$FolmeImpl;-><init>([Lmiui/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method clean()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/animation/ITouchStyle;->clean()V

    :cond_7
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lmiui/animation/IVisibleStyle;->clean()V

    :cond_e
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lmiui/animation/IStateStyle;->clean()V

    :cond_15
    return-void
.end method

.method end()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiui/animation/ITouchStyle;->end([Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    if-eqz v0, :cond_13

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiui/animation/IVisibleStyle;->end([Ljava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    if-eqz v0, :cond_1c

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lmiui/animation/IStateStyle;->end([Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public state()Lmiui/animation/IStateStyle;
    .registers 2

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    if-nez v0, :cond_c

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    invoke-static {v0}, Lmiui/animation/controller/FolmeState;->composeStyle([Lmiui/animation/IAnimTarget;)Lmiui/animation/controller/IFolmeStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    :cond_c
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mState:Lmiui/animation/IStateStyle;

    return-object v0
.end method

.method public touch()Lmiui/animation/ITouchStyle;
    .registers 3

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    if-nez v0, :cond_15

    new-instance v0, Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeTouch;-><init>([Lmiui/animation/IAnimTarget;)V

    new-instance v1, Lmiui/animation/controller/FolmeFont;

    invoke-direct {v1}, Lmiui/animation/controller/FolmeFont;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/animation/controller/FolmeTouch;->setFontStyle(Lmiui/animation/controller/FolmeFont;)V

    iput-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    :cond_15
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mTouch:Lmiui/animation/ITouchStyle;

    return-object v0
.end method

.method public visible()Lmiui/animation/IVisibleStyle;
    .registers 3

    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    if-nez v0, :cond_d

    new-instance v0, Lmiui/animation/controller/FolmeVisible;

    iget-object v1, p0, Lmiui/animation/Folme$FolmeImpl;->mTargets:[Lmiui/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeVisible;-><init>([Lmiui/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    :cond_d
    iget-object v0, p0, Lmiui/animation/Folme$FolmeImpl;->mVisible:Lmiui/animation/IVisibleStyle;

    return-object v0
.end method
