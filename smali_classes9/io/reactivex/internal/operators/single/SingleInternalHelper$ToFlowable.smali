.class final enum Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    aput-object v0, v1, v2

    sput-object v1, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;
    .locals 1

    const-class v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;
    .locals 1

    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/SingleSource;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->apply(Lio/reactivex/SingleSource;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lio/reactivex/SingleSource;)Lorg/reactivestreams/Publisher;
    .locals 0

    new-instance p0, Lio/reactivex/internal/operators/single/SingleToFlowable;

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/single/SingleToFlowable;-><init>(Lio/reactivex/SingleSource;)V

    return-object p0
.end method
