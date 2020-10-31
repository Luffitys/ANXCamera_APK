.class Lmiui/maml/util/TextFormatter$StringVarPara;
.super Lmiui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lmiui/maml/data/IndexedVariable;

.field private mVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>(Lmiui/maml/util/TextFormatter$1;)V

    iput-object p2, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v1, ""

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method
