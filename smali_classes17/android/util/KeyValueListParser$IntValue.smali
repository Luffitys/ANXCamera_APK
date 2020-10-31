.class public Landroid/util/KeyValueListParser$IntValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntValue"
.end annotation


# instance fields
.field private final mDefaultValue:I

.field private final mKey:Ljava/lang/String;

.field private mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    iput p2, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    iput p2, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public getDefaultValue()I
    .registers 2

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .registers 4

    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    iget v1, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return-void
.end method

.method public setValue(I)V
    .registers 2

    iput p1, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return-void
.end method
