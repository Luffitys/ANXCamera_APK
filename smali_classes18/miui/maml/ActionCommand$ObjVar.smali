.class Lmiui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjVar"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndexArr:Lmiui/maml/data/Expression;

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    move-object v0, p1

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_28

    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v2

    :cond_28
    :goto_28
    invoke-virtual {p2, v0}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_20

    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_20

    :try_start_12
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v1, v3

    aget-object v1, v2, v1
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v1

    const/4 v2, 0x0

    return-object v2

    :cond_20
    return-object v0
.end method
