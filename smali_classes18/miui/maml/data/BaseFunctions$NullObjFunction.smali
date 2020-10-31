.class Lmiui/maml/data/BaseFunctions$NullObjFunction;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullObjFunction"
.end annotation


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 8

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_28

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_26

    :cond_1d
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    goto :goto_28

    :cond_26
    :goto_26
    iput v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    :cond_28
    :goto_28
    iget v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ne v1, v2, :cond_2f

    return-wide v3

    :cond_2f
    invoke-virtual {p2, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_38

    :cond_36
    const-wide/16 v3, 0x0

    :goto_38
    return-wide v3
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    return-void
.end method
