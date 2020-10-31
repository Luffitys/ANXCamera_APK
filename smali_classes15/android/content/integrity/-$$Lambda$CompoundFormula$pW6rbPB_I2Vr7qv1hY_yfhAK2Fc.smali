.class public final synthetic Landroid/content/integrity/-$$Lambda$CompoundFormula$pW6rbPB_I2Vr7qv1hY_yfhAK2Fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/integrity/AppInstallMetadata;


# direct methods
.method public synthetic constructor <init>(Landroid/content/integrity/AppInstallMetadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/integrity/-$$Lambda$CompoundFormula$pW6rbPB_I2Vr7qv1hY_yfhAK2Fc;->f$0:Landroid/content/integrity/AppInstallMetadata;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/integrity/-$$Lambda$CompoundFormula$pW6rbPB_I2Vr7qv1hY_yfhAK2Fc;->f$0:Landroid/content/integrity/AppInstallMetadata;

    check-cast p1, Landroid/content/integrity/IntegrityFormula;

    invoke-static {v0, p1}, Landroid/content/integrity/CompoundFormula;->lambda$matches$1(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/IntegrityFormula;)Z

    move-result p1

    return p1
.end method
