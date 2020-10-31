.class final Lcom/android/framework/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "OneofInfo.java"


# instance fields
.field private final caseField:Ljava/lang/reflect/Field;

.field private final id:I

.field private final valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    iput-object p2, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getCaseField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    return v0
.end method

.method public getValueField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-object v0
.end method
