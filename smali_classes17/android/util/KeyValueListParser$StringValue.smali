.class public Landroid/util/KeyValueListParser$StringValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringValue"
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .registers 4

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    iget-object v1, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-void
.end method
