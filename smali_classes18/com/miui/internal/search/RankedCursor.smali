.class public Lcom/miui/internal/search/RankedCursor;
.super Landroid/database/AbstractCursor;
.source "RankedCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/RankedCursor$ScoredData;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/miui/internal/search/RankedCursor$ScoredData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/search/RankedCursor;->columnNames:[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/RankedCursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .registers 5

    if-ltz p1, :cond_2f

    iget v0, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    if-ge p1, v0, :cond_2f

    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    # invokes: Lcom/miui/internal/search/RankedCursor$ScoredData;->get(I)Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->access$000(Lcom/miui/internal/search/RankedCursor$ScoredData;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1f
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v2, "After last row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v2, "Before first row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRow(D[Ljava/lang/String;)V
    .registers 7

    array-length v0, p3

    iget v1, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    if-ne v0, v1, :cond_30

    new-instance v0, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/internal/search/RankedCursor$ScoredData;-><init>(D[Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-virtual {v0, v2}, Lcom/miui/internal/search/RankedCursor$ScoredData;->compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I

    move-result v2

    if-lez v2, :cond_27

    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    iget-object v1, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columnNames.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", columnValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 5

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getScore()D
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_2f

    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_24

    :cond_17
    iget-object v1, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-virtual {v1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->getScore()D

    move-result-wide v1

    return-wide v1

    :cond_24
    :goto_24
    const-wide/16 v1, 0x0

    return-wide v1

    :cond_27
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v2, "After last row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v2, "Before first row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(I)S
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
