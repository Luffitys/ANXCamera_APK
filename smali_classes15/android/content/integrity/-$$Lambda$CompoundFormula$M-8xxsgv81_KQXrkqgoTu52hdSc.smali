.class public final synthetic Landroid/content/integrity/-$$Lambda$CompoundFormula$M-8xxsgv81_KQXrkqgoTu52hdSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/integrity/-$$Lambda$CompoundFormula$M-8xxsgv81_KQXrkqgoTu52hdSc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/-$$Lambda$CompoundFormula$M-8xxsgv81_KQXrkqgoTu52hdSc;

    invoke-direct {v0}, Landroid/content/integrity/-$$Lambda$CompoundFormula$M-8xxsgv81_KQXrkqgoTu52hdSc;-><init>()V

    sput-object v0, Landroid/content/integrity/-$$Lambda$CompoundFormula$M-8xxsgv81_KQXrkqgoTu52hdSc;->INSTANCE:Landroid/content/integrity/-$$Lambda$CompoundFormula$M-8xxsgv81_KQXrkqgoTu52hdSc;

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

    invoke-static {p1}, Landroid/content/integrity/CompoundFormula;->lambda$isAppCertificateFormula$2(Landroid/content/integrity/IntegrityFormula;)Z

    move-result p1

    return p1
.end method
