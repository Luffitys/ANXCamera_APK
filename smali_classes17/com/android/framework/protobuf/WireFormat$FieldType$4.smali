.class final enum Lcom/android/framework/protobuf/WireFormat$FieldType$4;
.super Lcom/android/framework/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;ILcom/android/framework/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
