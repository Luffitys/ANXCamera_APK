.class Landroid/service/autofill/FieldClassification$1;
.super Ljava/lang/Object;
.source "FieldClassification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/service/autofill/FieldClassification$Match;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/FieldClassification;


# direct methods
.method constructor <init>(Landroid/service/autofill/FieldClassification;)V
    .registers 2

    iput-object p1, p0, Landroid/service/autofill/FieldClassification$1;->this$0:Landroid/service/autofill/FieldClassification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/service/autofill/FieldClassification$Match;Landroid/service/autofill/FieldClassification$Match;)I
    .registers 5

    # getter for: Landroid/service/autofill/FieldClassification$Match;->mScore:F
    invoke-static {p1}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v0

    # getter for: Landroid/service/autofill/FieldClassification$Match;->mScore:F
    invoke-static {p2}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    # getter for: Landroid/service/autofill/FieldClassification$Match;->mScore:F
    invoke-static {p1}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v0

    # getter for: Landroid/service/autofill/FieldClassification$Match;->mScore:F
    invoke-static {p2}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/service/autofill/FieldClassification$Match;

    check-cast p2, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual {p0, p1, p2}, Landroid/service/autofill/FieldClassification$1;->compare(Landroid/service/autofill/FieldClassification$Match;Landroid/service/autofill/FieldClassification$Match;)I

    move-result p1

    return p1
.end method
