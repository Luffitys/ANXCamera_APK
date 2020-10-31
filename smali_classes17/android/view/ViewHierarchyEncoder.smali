.class public Landroid/view/ViewHierarchyEncoder;
.super Ljava/lang/Object;
.source "ViewHierarchyEncoder.java"


# static fields
.field private static final SIG_BOOLEAN:B = 0x5at

.field private static final SIG_BYTE:B = 0x42t

.field private static final SIG_DOUBLE:B = 0x44t

.field private static final SIG_END_MAP:S = 0x0s

.field private static final SIG_FLOAT:B = 0x46t

.field private static final SIG_INT:B = 0x49t

.field private static final SIG_LONG:B = 0x4at

.field private static final SIG_MAP:B = 0x4dt

.field private static final SIG_SHORT:B = 0x53t

.field private static final SIG_STRING:B = 0x52t


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mPropertyId:S

.field private final mPropertyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mStream:Ljava/io/DataOutputStream;

.field private mUserPropertiesEnabled:Z


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    const/4 v0, 0x1

    iput-short v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    const-string/jumbo v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    iput-boolean v0, p0, Landroid/view/ViewHierarchyEncoder;->mUserPropertiesEnabled:Z

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    return-void
.end method

.method private createPropertyIndex(Ljava/lang/String;)S
    .registers 5

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_1a

    iget-short v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method private endPropertyMap()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method private startPropertyMap()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    return-void
.end method

.method private writeBoolean(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method

.method private writeFloat(F)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method private writeInt(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method private writeShort(S)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x7fff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    move-exception v0

    :goto_26
    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeFloat(F)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeInt(I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;S)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeBoolean(Z)V

    return-void
.end method

.method public addPropertyKey(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method public addUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewHierarchyEncoder;->mUserPropertiesEnabled:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public beginObject(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta:__name__"

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string/jumbo v1, "meta:__hash__"

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public endObject()V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    return-void
.end method

.method public endStream()V
    .registers 4

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    const-string v0, "__name__"

    const-string/jumbo v1, "propertyIndex"

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    goto :goto_15

    :cond_38
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    return-void
.end method

.method public setUserPropertiesEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewHierarchyEncoder;->mUserPropertiesEnabled:Z

    return-void
.end method
