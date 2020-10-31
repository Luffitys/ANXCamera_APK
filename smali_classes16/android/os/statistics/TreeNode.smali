.class Landroid/os/statistics/TreeNode;
.super Ljava/lang/Object;
.source "StringDictTree.java"


# instance fields
.field private mChildNodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Landroid/os/statistics/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    return-void
.end method

.method private insertToChild(Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_38

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/TreeNode;

    if-nez v1, :cond_33

    new-instance v2, Landroid/os/statistics/TreeNode;

    invoke-direct {v2}, Landroid/os/statistics/TreeNode;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/statistics/TreeNode;->insert(Ljava/lang/String;I)V

    :cond_38
    return-void
.end method


# virtual methods
.method find(Ljava/lang/String;I)Z
    .registers 6

    invoke-virtual {p0}, Landroid/os/statistics/TreeNode;->isTerminal()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_38

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/TreeNode;

    if-eqz v0, :cond_37

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/os/statistics/TreeNode;->find(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    :cond_37
    return v1

    :cond_38
    return v1
.end method

.method insert(Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_25

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    if-nez v0, :cond_f

    goto :goto_25

    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/TreeNode;->insertToChild(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_27

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/os/statistics/TreeNode;->insertToChild(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    goto :goto_27

    :cond_25
    :goto_25
    iput-object p1, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    :cond_27
    :goto_27
    return-void
.end method

.method isTerminal()Z
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
