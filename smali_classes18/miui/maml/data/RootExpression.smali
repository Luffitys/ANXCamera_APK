.class public Lmiui/maml/data/RootExpression;
.super Lmiui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/RootExpression$VarVersionVisitor;,
        Lmiui/maml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lmiui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

.field private mVars:Lmiui/maml/data/Variables;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lmiui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V
    .registers 4

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    iput-boolean v0, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iput-object p1, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    iput-object p2, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    return-void
.end method

.method static synthetic access$002(Lmiui/maml/data/RootExpression;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 2

    return-void
.end method

.method public addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate()D
    .registers 6

    iget-boolean v0, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_37

    new-instance v0, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;)V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1, v0}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_28

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    goto :goto_37

    :cond_28
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_37
    :goto_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    goto :goto_6a

    :cond_3b
    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    goto :goto_60

    :cond_42
    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v1, :cond_60

    const/4 v1, 0x0

    :goto_47
    iget-object v2, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v3, v2

    if-ge v1, v3, :cond_60

    aget-object v2, v2, v1

    if-eqz v2, :cond_5d

    iget-object v3, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/RootExpression$VarVersion;->getVer(Lmiui/maml/data/Variables;)I

    move-result v3

    iget v4, v2, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v3, :cond_5d

    const/4 v0, 0x1

    iput v3, v2, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_60
    :goto_60
    if-eqz v0, :cond_6a

    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    :cond_6a
    :goto_6a
    iget-wide v0, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_2b

    new-instance v0, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;)V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1, v0}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    goto :goto_5e

    :cond_2f
    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v1, :cond_36

    const/4 v0, 0x1

    goto :goto_54

    :cond_36
    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v1, :cond_54

    const/4 v1, 0x0

    :goto_3b
    iget-object v2, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v3, v2

    if-ge v1, v3, :cond_54

    aget-object v2, v2, v1

    if-eqz v2, :cond_51

    iget-object v3, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/RootExpression$VarVersion;->getVer(Lmiui/maml/data/Variables;)I

    move-result v3

    iget v4, v2, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v3, :cond_51

    const/4 v0, 0x1

    iput v3, v2, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_54
    :goto_54
    if-eqz v0, :cond_5e

    iget-object v1, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
