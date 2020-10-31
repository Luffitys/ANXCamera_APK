.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$Callback2;,
        Landroid/view/ActionMode$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_HIDE_DURATION:I = -0x1

.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_PRIMARY:I


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ActionMode;->mType:I

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/view/ActionMode;->mType:I

    return v0
.end method

.method public hide(J)V
    .registers 3

    return-void
.end method

.method public abstract invalidate()V
.end method

.method public invalidateContentRect()V
    .registers 1

    return-void
.end method

.method public isTitleOptional()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    return-void
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroid/view/ActionMode;->mType:I

    return-void
.end method
