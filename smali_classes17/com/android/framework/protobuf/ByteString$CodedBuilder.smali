.class final Lcom/android/framework/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/android/framework/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/framework/protobuf/ByteString$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/framework/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    return-object v0
.end method
