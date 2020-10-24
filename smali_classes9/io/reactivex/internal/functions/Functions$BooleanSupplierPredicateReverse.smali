.class final Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field final supplier:Lio/reactivex/functions/BooleanSupplier;


# direct methods
.method constructor <init>(Lio/reactivex/functions/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;->supplier:Lio/reactivex/functions/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;->supplier:Lio/reactivex/functions/BooleanSupplier;

    invoke-interface {p0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
