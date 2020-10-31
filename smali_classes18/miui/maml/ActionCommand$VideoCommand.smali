.class Lmiui/maml/ActionCommand$VideoCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$VideoCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VideoCommand"


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field private mLooping:Lmiui/maml/data/Expression;

.field private mPath:Lmiui/maml/data/Expression;

.field private mScaleMode:Lmiui/maml/data/Expression;

.field private mTime:Lmiui/maml/data/Expression;

.field private mVolume:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VideoCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mPath:Lmiui/maml/data/Expression;

    const-string v2, "volume"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mVolume:Lmiui/maml/data/Expression;

    const-string v2, "scaleMode"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mScaleMode:Lmiui/maml/data/Expression;

    const-string v2, "loop"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mLooping:Lmiui/maml/data/Expression;

    const-string v2, "time"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mTime:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_b2

    :cond_54
    goto :goto_87

    :sswitch_55
    const-string v2, "setVolume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v3

    goto :goto_88

    :sswitch_5f
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x0

    goto :goto_88

    :sswitch_69
    const-string v2, "play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v6

    goto :goto_88

    :sswitch_73
    const-string v2, "seekTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v5

    goto :goto_88

    :sswitch_7d
    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v4

    goto :goto_88

    :goto_87
    const/4 v2, -0x1

    :goto_88
    if-eqz v2, :cond_ab

    if-eq v2, v6, :cond_a6

    if-eq v2, v5, :cond_a1

    if-eq v2, v4, :cond_9c

    if-eq v2, v3, :cond_97

    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_b0

    :cond_97
    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_b0

    :cond_9c
    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_b0

    :cond_a1
    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_b0

    :cond_a6
    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_b0

    :cond_ab
    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    nop

    :goto_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x50c07cbe -> :sswitch_7d
        -0x3603e4ed -> :sswitch_73
        0x348b34 -> :sswitch_69
        0x65825f6 -> :sswitch_5f
        0x27f73e1c -> :sswitch_55
    .end sparse-switch
.end method


# virtual methods
.method public doPerform()V
    .registers 11

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VideoCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_76

    instance-of v1, v0, Lmiui/maml/elements/video/VideoElement;

    if-nez v1, :cond_c

    goto/16 :goto_76

    :cond_c
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/video/VideoElement;

    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$VideoCommand;->mCommand:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_71

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x3

    if-eq v2, v4, :cond_60

    const/4 v4, 0x4

    if-eq v2, v4, :cond_53

    const/4 v4, 0x5

    if-eq v2, v4, :cond_29

    goto :goto_75

    :cond_29
    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    iget-object v6, p0, Lmiui/maml/ActionCommand$VideoCommand;->mLooping:Lmiui/maml/data/Expression;

    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    move v2, v3

    :cond_3e
    iget-object v3, p0, Lmiui/maml/ActionCommand$VideoCommand;->mScaleMode:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v4, v6

    :cond_47
    iget-object v3, p0, Lmiui/maml/ActionCommand$VideoCommand;->mPath:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    :cond_4f
    invoke-virtual {v1, v2, v4, v5}, Lmiui/maml/elements/video/VideoElement;->config(ZILjava/lang/String;)V

    goto :goto_75

    :cond_53
    iget-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mVolume:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/video/VideoElement;->setVolume(F)V

    goto :goto_75

    :cond_60
    iget-object v2, p0, Lmiui/maml/ActionCommand$VideoCommand;->mTime:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/video/VideoElement;->seekTo(I)V

    goto :goto_75

    :cond_6d
    invoke-virtual {v1}, Lmiui/maml/elements/video/VideoElement;->pause()V

    goto :goto_75

    :cond_71
    invoke-virtual {v1}, Lmiui/maml/elements/video/VideoElement;->play()V

    nop

    :cond_75
    :goto_75
    return-void

    :cond_76
    :goto_76
    return-void
.end method
