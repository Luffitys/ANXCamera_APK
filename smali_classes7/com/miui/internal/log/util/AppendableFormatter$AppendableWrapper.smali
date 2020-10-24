.class Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field private iAppendable:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/util/AppendableFormatter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method

.method public setAppendable(Ljava/lang/Appendable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    return-void
.end method
