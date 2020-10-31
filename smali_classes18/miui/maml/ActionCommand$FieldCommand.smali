.class Lmiui/maml/ActionCommand$FieldCommand;
.super Lmiui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$BaseMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string v0, "field"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldCommand, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    const-string v0, "method"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    goto :goto_4c

    :cond_41
    const-string v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 6

    const-string v0, "ActionCommand"

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    :cond_9
    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_82

    :try_start_d
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1e

    goto :goto_82

    :cond_1e
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->prepareParams()V

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v2, :cond_82

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_82

    :cond_3d
    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_50} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_50} :catch_71
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_50} :catch_52

    nop

    goto :goto_82

    :catch_52
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Field target is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->init()V

    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    goto :goto_1b

    :cond_14
    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected loadField()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    :cond_10
    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    const-string v1, "ActionCommand"

    if-eqz v0, :cond_3b

    :try_start_16
    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_3a

    :catch_21
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    goto :goto_51

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "class is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void
.end method
