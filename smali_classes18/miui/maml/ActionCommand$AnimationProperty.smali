.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_6d

    :cond_10
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_6d

    :cond_1d
    const-string v0, "resume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_6d

    :cond_2a
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationProperty;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6d

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6d

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6d

    const-string v0, "ActionCommand"

    const-string v1, "bad expression format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_69
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    :cond_6d
    :goto_6d
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 23

    move-object/from16 v0, p0

    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    iget-object v2, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_89

    const/4 v4, 0x3

    if-eq v1, v4, :cond_83

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1a

    goto/16 :goto_95

    :cond_1a
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v11, v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    if-lez v11, :cond_35

    aget-object v11, v10, v14

    if-nez v11, :cond_2e

    move-wide v10, v12

    goto :goto_34

    :cond_2e
    aget-object v10, v10, v14

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    :goto_34
    double-to-long v5, v10

    :cond_35
    iget-object v10, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v11, v10

    if-le v11, v2, :cond_48

    aget-object v11, v10, v2

    if-nez v11, :cond_41

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    goto :goto_47

    :cond_41
    aget-object v10, v10, v2

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    :goto_47
    double-to-long v7, v10

    :cond_48
    iget-object v10, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v11, v10

    if-le v11, v3, :cond_5f

    aget-object v11, v10, v3

    if-nez v11, :cond_53

    :cond_51
    move v3, v14

    goto :goto_5e

    :cond_53
    aget-object v3, v10, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    cmpl-double v3, v10, v12

    if-lez v3, :cond_51

    move v3, v2

    :goto_5e
    move v1, v3

    :cond_5f
    iget-object v3, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v10, v3

    if-le v10, v4, :cond_75

    aget-object v10, v3, v4

    if-nez v10, :cond_6a

    :cond_68
    move v2, v14

    goto :goto_74

    :cond_6a
    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    cmpl-double v3, v3, v12

    if-lez v3, :cond_68

    :goto_74
    move v9, v2

    :cond_75
    iget-object v15, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move/from16 v20, v1

    move/from16 v21, v9

    invoke-virtual/range {v15 .. v21}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_95

    :cond_83
    iget-object v1, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_95

    :cond_89
    iget-object v1, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_95

    :cond_8f
    iget-object v1, v0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    nop

    :goto_95
    return-void
.end method
