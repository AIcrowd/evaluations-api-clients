export * from './argo.service';
import { ArgoService } from './argo.service';
export * from './auth.service';
import { AuthService } from './auth.service';
export * from './clusters.service';
import { ClustersService } from './clusters.service';
export * from './graders.service';
import { GradersService } from './graders.service';
export * from './organisations.service';
import { OrganisationsService } from './organisations.service';
export * from './submissions.service';
import { SubmissionsService } from './submissions.service';
export * from './users.service';
import { UsersService } from './users.service';
export const APIS = [ArgoService, AuthService, ClustersService, GradersService, OrganisationsService, SubmissionsService, UsersService];
