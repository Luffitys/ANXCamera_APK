.class public final synthetic Landroid/content/integrity/-$$Lambda$CompoundFormula$uDdqwcHo8K9__Cad__RPzb-jKiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/integrity/-$$Lambda$CompoundFormula$uDdqwcHo8K9__Cad__RPzb-jKiw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/-$$Lambda$CompoundFormula$uDdqwcHo8K9__Cad__RPzb-jKiw;

    invoke-direct {v0}, Landroid/content/integrity/-$$Lambda$CompoundFormula$uDdqwcHo8K9__Cad__RPzb-jKiw;-><init>()V

    sput-object v0, Landroid/content/integrity/-$$Lambda$CompoundFormula$uDdqwcHo8K9__Cad__RPzb-jKiw;->INSTANCE:Landroid/content/integrity/-$$Lambda$CompoundFormula$uDdqwcHo8K9__Cad__RPzb-jKiw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/content/integrity/IntegrityFormula;

    invoke-static {p1}, Landroid/content/integrity/CompoundFormula;->lambda$isInstallerFormula$3(Landroid/content/integrity/IntegrityFormula;)Z

    move-result p1

    return p1
.end method
