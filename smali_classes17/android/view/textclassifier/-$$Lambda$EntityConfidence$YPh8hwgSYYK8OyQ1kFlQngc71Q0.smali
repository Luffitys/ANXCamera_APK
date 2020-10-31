.class public final synthetic Landroid/view/textclassifier/-$$Lambda$EntityConfidence$YPh8hwgSYYK8OyQ1kFlQngc71Q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/EntityConfidence;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/EntityConfidence;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/-$$Lambda$EntityConfidence$YPh8hwgSYYK8OyQ1kFlQngc71Q0;->f$0:Landroid/view/textclassifier/EntityConfidence;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/-$$Lambda$EntityConfidence$YPh8hwgSYYK8OyQ1kFlQngc71Q0;->f$0:Landroid/view/textclassifier/EntityConfidence;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->lambda$resetSortedEntitiesFromMap$0$EntityConfidence(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
