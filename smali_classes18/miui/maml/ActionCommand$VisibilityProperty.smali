.class Lmiui/maml/ActionCommand$VisibilityProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityProperty"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    const-string v0, "toggle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    goto :goto_25

    :cond_f
    const-string v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    goto :goto_25

    :cond_1a
    const-string v0, "false"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    :goto_19
    return-void
.end method
