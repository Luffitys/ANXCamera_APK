.class interface abstract Lcom/android/framework/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "MutabilityOracle.java"


# static fields
.field public static final IMMUTABLE:Lcom/android/framework/protobuf/MutabilityOracle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/framework/protobuf/MutabilityOracle$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/MutabilityOracle$1;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/android/framework/protobuf/MutabilityOracle;

    return-void
.end method


# virtual methods
.method public abstract ensureMutable()V
.end method
